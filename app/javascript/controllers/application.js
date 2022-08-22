import { Application } from "@hotwired/stimulus"
const application = Application.start()
// Configure Stimulus development experienceapplication.debug = falsewindow.Stimulus   = application
export { application }
