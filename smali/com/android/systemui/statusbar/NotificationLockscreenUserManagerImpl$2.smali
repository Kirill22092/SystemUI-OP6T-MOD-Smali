.class Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationLockscreenUserManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v10

    goto :goto_1

    :sswitch_1
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_2
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_3
    const-string v3, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_4
    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_5
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v9

    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v10, :cond_5

    if-eq v2, v8, :cond_5

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "android.intent.extra.INTENT"

    .line 171
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/content/IntentSender;

    const-string v2, "android.intent.extra.INDEX"

    .line 173
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v12, :cond_2

    .line 176
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-eqz v1, :cond_7

    .line 182
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 183
    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$100(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    .line 184
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$100(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result v3

    if-eqz v2, :cond_3

    .line 185
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    .line 187
    :cond_3
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v2

    .line 188
    invoke-static {v1, v4, v3, v10, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v2

    .line 191
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$700(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/NotificationClickNotifier;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    goto/16 :goto_3

    .line 168
    :cond_4
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    goto/16 :goto_3

    .line 164
    :cond_5
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$400(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    goto :goto_3

    .line 138
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 140
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$400(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is in the house"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockscreenUserManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateLockscreenNotificationSetting()V

    .line 145
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    .line 149
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$100(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v1

    const-string/jumbo v2, "user switched"

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->reapplyFilterAndSort(Ljava/lang/String;)V

    .line 150
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iget v1, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUserSwitched(I)V

    .line 153
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$200(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$500(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 157
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->access$600(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

    .line 158
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;->onUserChanged(I)V

    goto :goto_2

    :cond_7
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49d08e2b -> :sswitch_5
        -0x33813a72 -> :sswitch_4
        -0x23a715d4 -> :sswitch_3
        0x31af1c32 -> :sswitch_2
        0x392cb822 -> :sswitch_1
        0x42dd01f1 -> :sswitch_0
    .end sparse-switch
.end method
