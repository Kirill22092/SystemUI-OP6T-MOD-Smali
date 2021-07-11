.class public Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
.super Lcom/android/systemui/statusbar/notification/collection/ListEntry;
.source "GroupEntry.java"


# static fields
.field public static final ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUntruncatedChildCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    const-string v1, "<root>"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 39
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearChildren()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    return-object p0
.end method

.method getRawChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method public getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getUntruncatedChildCount()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUntruncatedChildCount:I

    return p0
.end method

.method public setSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method

.method public setUntruncatedChildCount(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUntruncatedChildCount:I

    return-void
.end method

.method sortChildren(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method
