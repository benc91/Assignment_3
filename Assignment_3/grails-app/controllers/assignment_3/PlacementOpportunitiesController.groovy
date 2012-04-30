package assignment_3

class PlacementOpportunitiesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [placementOpportunitiesInstanceList: PlacementOpportunities.list(params), placementOpportunitiesInstanceTotal: PlacementOpportunities.count()]
    }

    def create = {
        def placementOpportunitiesInstance = new PlacementOpportunities()
        placementOpportunitiesInstance.properties = params
        return [placementOpportunitiesInstance: placementOpportunitiesInstance]
    }

    def save = {
        def placementOpportunitiesInstance = new PlacementOpportunities(params)
        if (placementOpportunitiesInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), placementOpportunitiesInstance.id])}"
            redirect(action: "show", id: placementOpportunitiesInstance.id)
        }
        else {
            render(view: "create", model: [placementOpportunitiesInstance: placementOpportunitiesInstance])
        }
    }

    def show = {
        def placementOpportunitiesInstance = PlacementOpportunities.get(params.id)
        if (!placementOpportunitiesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), params.id])}"
            redirect(action: "list")
        }
        else {
            [placementOpportunitiesInstance: placementOpportunitiesInstance]
        }
    }

    def edit = {
        def placementOpportunitiesInstance = PlacementOpportunities.get(params.id)
        if (!placementOpportunitiesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [placementOpportunitiesInstance: placementOpportunitiesInstance]
        }
    }

    def update = {
        def placementOpportunitiesInstance = PlacementOpportunities.get(params.id)
        if (placementOpportunitiesInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (placementOpportunitiesInstance.version > version) {
                    
                    placementOpportunitiesInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities')] as Object[], "Another user has updated this PlacementOpportunities while you were editing")
                    render(view: "edit", model: [placementOpportunitiesInstance: placementOpportunitiesInstance])
                    return
                }
            }
            placementOpportunitiesInstance.properties = params
            if (!placementOpportunitiesInstance.hasErrors() && placementOpportunitiesInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), placementOpportunitiesInstance.id])}"
                redirect(action: "show", id: placementOpportunitiesInstance.id)
            }
            else {
                render(view: "edit", model: [placementOpportunitiesInstance: placementOpportunitiesInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def placementOpportunitiesInstance = PlacementOpportunities.get(params.id)
        if (placementOpportunitiesInstance) {
            try {
                placementOpportunitiesInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'placementOpportunities.label', default: 'PlacementOpportunities'), params.id])}"
            redirect(action: "list")
        }
    }
}
