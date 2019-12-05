package kg.ash.javavi.actions;

import kg.ash.javavi.cache.Cache;
import kg.ash.javavi.output.OutputSimilarClasses;

public class FilterSimilarClassesAction extends ActionWithTarget {

    @Override
    public String perform(String[] args) {
        return new OutputSimilarClasses(Cache.getInstance().getClassPackages()).get(
            parseTarget(args));
    }
}
