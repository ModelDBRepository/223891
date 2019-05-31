figure
hold on
load vary_cat_LTS.txt
a=vary_cat_LTS(:,1);
d=diff(a);
b=find(d<0);

for plts=1:length(b)+1
    subplot(2,4,ceil(plts/4)) % groups of 4 graphs per plot
    hold on
    if plts==1
        plot(vary_cat_LTS(1:b(plts),1), vary_cat_LTS(1:b(plts),2))
    else
        if plts==length(b)+1
            plot(vary_cat_LTS((b(plts-1) + 1):end,1), vary_cat_LTS((b(plts-1)+1):end,2))
        else
            plot(vary_cat_LTS((b(plts-1) + 1):b(plts),1), vary_cat_LTS((b(plts-1)+1):b(plts),2))
        end
    end
    axis([min(vary_cat_LTS(:,1)) max(vary_cat_LTS(:,1)) min(vary_cat_LTS(:,2)) max(vary_cat_LTS(:,2)) ])
end
