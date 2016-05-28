/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package viewmodel;

/**
 *
 * @author ali
 */
public class SiteCurrentInformation {
    private long numOfJobs;
    private long numOfJobSeekers;
    private long numOfEmployers;
    private long numOfTeams;
    
    public SiteCurrentInformation() {}

    public long getNumOfJobs() {
        return numOfJobs;
    }

    public void setNumOfJobs(long numOfJobs) {
        this.numOfJobs = numOfJobs;
    }

    public long getNumOfJobSeekers() {
        return numOfJobSeekers;
    }

    public void setNumOfJobSeekers(long numOfJobSeekers) {
        this.numOfJobSeekers = numOfJobSeekers;
    }

    public long getNumOfEmployers() {
        return numOfEmployers;
    }

    public void setNumOfEmployers(long numOfEmployers) {
        this.numOfEmployers = numOfEmployers;
    }

    public long getNumOfTeams() {
        return numOfTeams;
    }

    public void setNumOfTeams(long numOfTeams) {
        this.numOfTeams = numOfTeams;
    }
    
}
