.class public final Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.super Lcom/android/systemui/statusbar/notification/collection/ListEntry;
.source "NotificationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;,
        Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;,
        Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;
    }
.end annotation


# instance fields
.field public editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

.field private hasSentReply:Z

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field private initializationTime:J

.field private interruption:Z

.field public keyguardChronometer:Landroid/widget/Chronometer;

.field private lastFullScreenIntentLaunchTime:J

.field public lastRemoteInputSent:J

.field public final mActiveAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFgsDismissal:Z

.field private mAutoHeadsUp:Z

.field private mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private mBucket:I

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field mCancellationReason:I

.field private mCreationTime:J

.field private mDebugThrowable:Ljava/lang/Throwable;

.field final mDismissInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

.field private mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

.field public mIsGamingModeNotification:Z

.field private mIsMarkedForUserTriggeredMovement:Z

.field public mIsSystemNotification:Ljava/lang/Boolean;

.field private final mKey:Ljava/lang/String;

.field final mLifetimeExtenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSensitivityChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPulseSupressed:Z

.field private mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private mRowController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSensitive:Z

.field private mShelfIconVisible:Z

.field public remoteInputMimeType:Ljava/lang/String;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public remoteInputTextWhenReset:Ljava/lang/CharSequence;

.field public remoteInputUri:Landroid/net/Uri;

.field private row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public statusBarChronometer:Landroid/widget/Chronometer;

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;J)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;ZJ)V

    return-void
.end method

.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;ZJ)V
    .locals 4

    .line 213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 122
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->buildEmptyPack(Lcom/android/systemui/statusbar/notification/icon/IconPack;)Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    const-wide/16 v1, -0x7d0

    .line 132
    iput-wide v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const/4 v3, 0x1

    .line 149
    iput v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 150
    iput v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    .line 151
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 154
    iput-wide v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 155
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    const-wide/16 v1, -0x1

    .line 161
    iput-wide v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    .line 175
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Ljava/util/List;

    const/4 v1, 0x5

    .line 181
    iput v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    .line 188
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->statusBarChronometer:Landroid/widget/Chronometer;

    .line 189
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->keyguardChronometer:Landroid/widget/Chronometer;

    .line 215
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iput-wide p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCreationTime:J

    .line 218
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 220
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 222
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAllowFgsDismissal:Z

    :try_start_0
    const-string p2, "scene_modes_game"

    .line 226
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGamingModeNotification:Z

    const-string p3, "android"

    .line 227
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    and-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGamingModeNotification:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationData"

    const-string p2, "exception while getting channel ID"

    .line 229
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static isCategory(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 0

    .line 935
    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isDismissable()Z
    .locals 6

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 826
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 827
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 829
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAllowFgsDismissal:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    return v2

    :cond_3
    return v1

    .line 835
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p0

    return p0
.end method

.method private static isNotificationBlockedByPolicy(Landroid/app/Notification;)Z
    .locals 1

    const-string v0, "call"

    .line 927
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "msg"

    .line 928
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alarm"

    .line 929
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    .line 930
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reminder"

    .line 931
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldSuppressVisualEffect(I)Z
    .locals 2

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isExemptFromDndVisualSuppression()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSuppressedVisualEffects()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateShelfIconVisibility()V
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 998
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mShelfIconVisible:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setShelfIconVisible(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abortTask()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    :cond_0
    return-void
.end method

.method public addOnSensitivityChangedListener(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;)V
    .locals 0

    .line 969
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public areGutsExposed()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canBubble()Z
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result p0

    return p0
.end method

.method public closeRemoteInput()V
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->closeRemoteInput()V

    :cond_0
    return-void
.end method

.method public getAttachedNotifChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 489
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 491
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-object p0
.end method

.method public getBucket()I
    .locals 0

    .line 448
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    return p0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getContrastedColor(Landroid/content/Context;ZI)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 518
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p2, p2, Landroid/app/Notification;->color:I

    .line 519
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 522
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result p1

    .line 524
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    .line 525
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    return p1
.end method

.method public getCreationTime()J
    .locals 2

    .line 291
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCreationTime:J

    return-wide v0
.end method

.method public getDebugThrowable()Ljava/lang/Throwable;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDebugThrowable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    return-object p0
.end method

.method public getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
    .locals 0

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p0

    return-object p0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 762
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    return-object p0
.end method

.method public getImportance()I
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 356
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLastAudiblyAlertedMs()J
    .locals 2

    .line 343
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotifPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
    .locals 0

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->getPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object p0

    return-object p0
.end method

.method public getRanking()Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    return-object p0
.end method

.method public getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    return-object p0
.end method

.method public getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRowController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-object p0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 551
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object p0
.end method

.method public getSbn()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getSmartActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSmartReplies()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSnoozeCriteria()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSuppressedVisualEffects()I
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result p0

    return p0
.end method

.method public getUserSentiment()I
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getUserSentiment()I

    move-result p0

    return p0
.end method

.method public hasFinishedInitialization()Z
    .locals 6

    .line 511
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasInterrupted()Z
    .locals 0

    .line 405
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    return p0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasJustSentRemoteInput()Z
    .locals 6

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAmbient()Z
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result p0

    return p0
.end method

.method public isAutoHeadsUp()Z
    .locals 0

    .line 712
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAutoHeadsUp:Z

    return p0
.end method

.method public isBubble()Z
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChildInGroup()Z
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isClearable()Z
    .locals 3

    .line 799
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isDismissable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 804
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 805
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 806
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 807
    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isDismissable()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method isExemptFromDndVisualSuppression()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isNotificationBlockedByPolicy(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 858
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public isGroupNotFullyVisible()Z
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupNotFullyVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLastMessageFromReply()Z
    .locals 4

    .line 577
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 580
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.remoteInputHistoryItems"

    .line 584
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 587
    instance-of v2, v0, [Landroid/app/RemoteInputHistoryItem;

    if-eqz v2, :cond_1

    .line 588
    check-cast v0, [Landroid/app/RemoteInputHistoryItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 590
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string v0, "android.messages"

    .line 594
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 593
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 595
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 596
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    if-eqz v0, :cond_4

    .line 599
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    const-string v1, "android.messagingUser"

    .line 603
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/Person;

    .line 604
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public isMarkedForUserTriggeredMovement()Z
    .locals 0

    .line 987
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsMarkedForUserTriggeredMovement:Z

    return p0
.end method

.method public isMediaNotification()Z
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isMediaRow()Z

    move-result p0

    return p0
.end method

.method public isPinnedAndExpanded()Z
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinnedAndExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPulseSuppressed()Z
    .locals 0

    .line 978
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    return p0
.end method

.method public isRemoved()Z
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRowDismissed()Z
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDismissed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRowHeadsUp()Z
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRowPinned()Z
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRowRemoved()Z
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSensitive()Z
    .locals 0

    .line 964
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    return p0
.end method

.method public isSummaryWithChildren()Z
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopLevelChild()Z
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isTopLevelChild()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public markForUserTriggeredMovement(Z)V
    .locals 0

    .line 1007
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsMarkedForUserTriggeredMovement:Z

    return-void
.end method

.method public mustStayOnScreen()Z
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInterruption()V

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    return-void
.end method

.method public notifyHeightChanged(Z)V
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onInflationTaskFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-void
.end method

.method public onRemoteInputInserted()V
    .locals 2

    const-wide/16 v0, -0x7d0

    .line 568
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    return-void
.end method

.method public removeOnSensitivityChangedListener(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;)V
    .locals 0

    .line 974
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRow()V
    .locals 0

    .line 767
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setRemoved()V

    :cond_0
    return-void
.end method

.method public resetInitializationTime()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 611
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    return-void
.end method

.method public resetUserExpansion()V
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetUserExpansion()V

    :cond_0
    return-void
.end method

.method public rowExists()Z
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 622
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setAutoHeadsUp(Z)V
    .locals 0

    .line 704
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mAutoHeadsUp:Z

    return-void
.end method

.method public setBucket(I)V
    .locals 0

    .line 452
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    return-void
.end method

.method public setDebugThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDebugThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method setDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;)V
    .locals 0

    .line 323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    return-void
.end method

.method public setFlagBubble(Z)Z
    .locals 2

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v0

    if-nez p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget v1, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p1, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 441
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 443
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    :cond_0
    return-void
.end method

.method public setHasSentReply()V
    .locals 1

    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 0

    .line 692
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUp(Z)V

    :cond_0
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_0
    return-void
.end method

.method public setHeadsUpIsVisible()V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpIsVisible()V

    :cond_0
    return-void
.end method

.method public setIcons(Lcom/android/systemui/statusbar/notification/icon/IconPack;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 0

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    .line 542
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-void
.end method

.method public setInitializationTime(J)V
    .locals 4

    .line 615
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 616
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    return-void
.end method

.method public setKeepInParent(Z)V
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setKeepInParent(Z)V

    :cond_0
    return-void
.end method

.method public setPulseSuppressed(Z)V
    .locals 0

    .line 982
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    return-void
.end method

.method public setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 3

    .line 299
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match existing key "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->updateShelfIconVisibility()V

    return-void
.end method

.method public setRowController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRowController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-void
.end method

.method public setRowPinned(Z)V
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setPinned(Z)V

    :cond_0
    return-void
.end method

.method public setSbn(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 267
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match existing key "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSensitive(ZZ)V
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 955
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    if-eq p1, p2, :cond_0

    .line 956
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    const/4 p1, 0x0

    .line 957
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 958
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;->onSensitivityChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShelfIconVisible(Z)V
    .locals 0

    .line 992
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mShelfIconVisible:Z

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->updateShelfIconVisibility()V

    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    return-void
.end method

.method public shouldSuppressAmbient()Z
    .locals 1

    const/16 v0, 0x80

    .line 900
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressFullScreenIntent()Z
    .locals 1

    const/4 v0, 0x4

    .line 876
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressNotificationDot()Z
    .locals 1

    const/16 v0, 0x40

    .line 918
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressNotificationList()Z
    .locals 1

    const/16 v0, 0x100

    .line 908
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressPeek()Z
    .locals 1

    const/16 v0, 0x10

    .line 884
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressStatusBar()Z
    .locals 1

    const/16 v0, 0x20

    .line 892
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result p0

    return p0
.end method

.method public showingPulsing()Z
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
