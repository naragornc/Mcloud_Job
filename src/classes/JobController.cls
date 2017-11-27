public class JobController {

    public Contact contact { get; set; }
    public JobController() {
        contact = new contact();
    }

    public PageReference Submit() {
        Account account = [SELECT Id FROM Account WHERE Name =: 'Apply to job'];
        contact.AccountId = account.Id;
        update contact;

        PageReference newPage = Page.Job_ThankYou;
        newPage.setRedirect(true);
        return newPage;
    }
}