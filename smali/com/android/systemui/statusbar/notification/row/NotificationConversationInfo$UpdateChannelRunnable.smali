.class Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;
.super Ljava/lang/Object;
.source "NotificationConversationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateChannelRunnable"
.end annotation


# instance fields
.field private final mAction:I

.field private final mAppPkg:Ljava/lang/String;

.field private final mAppUid:I

.field private mChannelToUpdate:Landroid/app/NotificationChannel;

.field private final mINotificationManager:Landroid/app/INotificationManager;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;Landroid/app/INotificationManager;Ljava/lang/String;IILandroid/app/NotificationChannel;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 726
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    .line 727
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    .line 728
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 729
    iput p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleController;->onUserChangedImportance(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$NotificationConversationInfo$UpdateChannelRunnable()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 735
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v4, -0x3e8

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 761
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    goto :goto_0

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$000(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)I

    move-result v0

    if-nez v0, :cond_4

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    invoke-interface {v0, v2, v4, v3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 744
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$UpdateChannelRunnable$_TdB-ndU_iWORDLe32ALCWoJYfU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$UpdateChannelRunnable$_TdB-ndU_iWORDLe32ALCWoJYfU;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->post(Ljava/lang/Runnable;)Z

    .line 748
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 749
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v2

    .line 748
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0

    .line 752
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 753
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v3

    .line 752
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 771
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-interface {v0, v1, v2, p0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "ConversationGuts"

    const-string v1, "Unable to update notification channel"

    .line 774
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
