.class public abstract Lcom/android/systemui/statusbar/notification/collection/ListEntry;
.super Ljava/lang/Object;
.source "ListEntry.java"


# instance fields
.field private final mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

.field mFirstAddedIteration:I

.field private final mKey:Ljava/lang/String;

.field private final mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mFirstAddedIteration:I

    .line 33
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->create()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 34
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->create()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method beginNewAttachState()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->clone(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->reset()V

    return-void
.end method

.method getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getNotifSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p0

    return-object p0
.end method

.method getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    return-object p0
.end method

.method public abstract getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.end method

.method public getSection()I
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getSectionIndex()I

    move-result p0

    return p0
.end method

.method setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    return-void
.end method
