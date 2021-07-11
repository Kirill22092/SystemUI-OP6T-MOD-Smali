.class public Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;
.super Ljava/lang/Object;
.source "NotifPipeline.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;


# instance fields
.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    return-void
.end method


# virtual methods
.method public addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method

.method public addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method

.method public addNotificationDismissInterceptor(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->addNotificationDismissInterceptor(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;)V

    return-void
.end method

.method public addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    return-void
.end method

.method public addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    return-void
.end method

.method public addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method

.method public addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    return-void
.end method

.method public getAllNotifs()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getShadeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getShadeList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShadeListCount()I
    .locals 4

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 217
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 219
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v3, :cond_0

    .line 220
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    add-int/lit8 v1, v1, 0x1

    .line 222
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setSections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->setSections(Ljava/util/List;)V

    return-void
.end method
