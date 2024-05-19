using {com.abhi.results as db} from '../db/schema';

service MArks {
    entity Result as projection on db.Result;
}
annotate MArks.Result with @odata.draft.enabled;