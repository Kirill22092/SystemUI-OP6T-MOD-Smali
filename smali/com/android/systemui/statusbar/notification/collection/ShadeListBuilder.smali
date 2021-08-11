.class public Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;
.super Ljava/lang/Object;
.source "ShadeListBuilder.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;
    }
.end annotation


# static fields
.field private static final sChildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultSection:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;


# instance fields
.field private mAllEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/GroupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

.field private mIterationCount:I

.field private final mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

.field private mNewNotifList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifComparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifFinalizeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifPreGroupFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifPromoters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBeforeFinalizeFilterListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBeforeRenderListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBeforeSortListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeSortListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBeforeTransformGroupsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeTransformGroupsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;

.field private final mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

.field private mReadOnlyNewNotifList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mReadOnlyNotifList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;

.field private final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field private final mTopLevelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$c6onOLMSwF5woQj-UCc8sv1YwJM;

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->sChildComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

    const-string v1, "DefaultSection"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->sDefaultSection:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/NotificationInteractionTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$j4Y9-Xdxb2bsigQJC_JntCQwmx4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$j4Y9-Xdxb2bsigQJC_JntCQwmx4;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTopLevelComparator:Ljava/util/Comparator;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    const-string p1, "NotifListBuilderImpl"

    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    return-void
.end method

.method private annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setSectionIndex(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setSection(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    if-ne v0, p0, :cond_0

    iput v2, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    :cond_0
    return-void
.end method

.method private annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    const-string v1, "Cannot nullify addition of "

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-ne v0, v2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it\'s still in the shade list."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    const-string v1, "Cannot nullify group "

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": still has children"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": summary is not null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    if-eq p1, p2, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot nullify addition of child "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it\'s still attached to its parent."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": no such addition. ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->findRejectingFilter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setExcludingFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->resetInitializationTime()V

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private applyNewNotifList()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    return-void
.end method

.method private applySections(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->findSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setSection(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setSectionIndex(I)V

    return-object p0
.end method

.method private applyTopLevelPromoters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->findPromoter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private buildList()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireIsBefore(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->setState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->resetNotifs()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->groupNotifs(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->dispatchOnBeforeTransformGroups(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->promoteNotifs(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->dispatchOnBeforeSort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->sortList()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->dispatchOnBeforeFinalizeFilter(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->logChanges()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->freeEmptyGroups()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->dispatchOnBeforeRenderList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;->onRenderList(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->countChildren(Ljava/util/List;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logEndBuildList(III)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logFinalList(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->setState(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    return-void
.end method

.method private static countChildren(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private dispatchOnBeforeFinalizeFilter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;->onBeforeFinalizeFilter(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchOnBeforeRenderList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;->onBeforeRenderList(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchOnBeforeSort(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeSortListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeSortListener;->onBeforeSort(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchOnBeforeTransformGroups(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeTransformGroupsListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeTransformGroupsListener;->onBeforeTransformGroups(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->setSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getRawChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v5, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v3, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method private findPromoter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;->shouldPromoteToTopLevel(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findRejectingFilter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;->isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->sDefaultSection:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private freeEmptyGroups()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private groupNotifs(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iput v3, v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->setSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logDuplicateSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->setSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->addChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logDuplicateTopLevelKey(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic lambda$WhP4dzR4yYnVTR1LdzWTnz4ov9k(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->onPromoterInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    return-void
.end method

.method public static synthetic lambda$bhojRXQ6I-zMsuyeOmu4rRbLGws(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->onNotifSectionInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;)V

    return-void
.end method

.method static synthetic lambda$freeEmptyGroups$1(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$nY0ibCyaS-Pniz4LEX1W2bWrRcs(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->onPreGroupFilterInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;->compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    sub-int v0, p2, v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-wide p1, p1, Landroid/app/Notification;->when:J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_3
    return v0
.end method

.method private synthetic lambda$promoteNotifs$0(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyTopLevelPromoters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return p0
.end method

.method static synthetic lambda$static$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-wide v0, p1, Landroid/app/Notification;->when:J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide p0, p0, Landroid/app/Notification;->when:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static synthetic lambda$xeAx9GATmY7ZgJZ0F6oEQlc0G_0(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->onFinalizeFilterInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method

.method private logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v5

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logEntryAttachStateChanged(ILjava/lang/String;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v2

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logParentChanged(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object v2

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logFilterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPromoterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    move-result-object v2

    if-eq p1, v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSectionIndex()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSectionIndex()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logSectionChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;I)V

    :cond_4
    return-void
.end method

.method private logChanges()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onFinalizeFilterInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logFinalizeFilterInvalidated(Ljava/lang/String;I)V

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void
.end method

.method private onNotifSectionInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logNotifSectionInvalidated(Ljava/lang/String;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void
.end method

.method private onPreGroupFilterInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPreGroupFilterInvalidated(Ljava/lang/String;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void
.end method

.method private onPromoterInvalidated(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPromoterInvalidated(Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void
.end method

.method private promoteNotifs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getRawChildren()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$ePmhZ1cn_R-Hisgrq179QhMPgfM;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$ePmhZ1cn_R-Hisgrq179QhMPgfM;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pruneIncompleteGroups(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getRawChildren()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->setSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_4

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->setSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, v4, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    :cond_2
    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private rebuildListIfBefore(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireIsBefore(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->is(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    :cond_0
    return-void
.end method

.method private resetNotifs()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->beginNewAttachState()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->clearChildren()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->setSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->beginNewAttachState()V

    iget v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iput v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private sortList()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applySections(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Landroid/util/Pair;

    move-result-object v2

    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setSection(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setSectionIndex(I)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->sChildComparator:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->sortChildren(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTopLevelComparator:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$xeAx9GATmY7ZgJZ0F6oEQlc0G_0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$xeAx9GATmY7ZgJZ0F6oEQlc0G_0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->setInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;)V

    return-void
.end method

.method addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$nY0ibCyaS-Pniz4LEX1W2bWrRcs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$nY0ibCyaS-Pniz4LEX1W2bWrRcs;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->setInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;)V

    return-void
.end method

.method addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$WhP4dzR4yYnVTR1LdzWTnz4ov9k;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$WhP4dzR4yYnVTR1LdzWTnz4ov9k;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->setInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;)V

    return-void
.end method

.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->setBuildListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "\tNotifListBuilderImpl shade notifications:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getShadeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\t\t None"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getShadeList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    const/4 p3, 0x1

    const-string v0, "\t\t"

    invoke-static {p1, p0, p3, v0}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpTree(Ljava/util/List;Lcom/android/systemui/statusbar/NotificationInteractionTracker;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getShadeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$2$ShadeListBuilder(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->lambda$new$2(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$promoteNotifs$0$ShadeListBuilder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->lambda$promoteNotifs$0(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public setOnRenderListListener(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;

    return-void
.end method

.method setSections(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$bhojRXQ6I-zMsuyeOmu4rRbLGws;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$bhojRXQ6I-zMsuyeOmu4rRbLGws;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->setInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
