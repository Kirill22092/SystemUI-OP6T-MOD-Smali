.class Lcom/android/systemui/statusbar/policy/MobileSignalController$7;
.super Landroid/content/BroadcastReceiver;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 2604
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 2607
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 2608
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2609
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "phone"

    .line 2613
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "subscription"

    .line 2615
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "ss"

    .line 2617
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2618
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2619
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSIMstateChange state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getSimSlotIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 2623
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2619
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    if-eq v1, p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 2626
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    .line 2628
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2629
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 2633
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 2634
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 2638
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2639
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDefaultDataSubId()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSubId()I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    .line 2640
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_0

    :cond_6
    const-string v0, "com.oem.intent.action.UST_5GX_ICON"

    .line 2644
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string/jumbo p1, "subid"

    .line 2645
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "is_show_5gxicon"

    .line 2646
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 2647
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 2648
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive= subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", curState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eq p1, v1, :cond_8

    .line 2650
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result p1

    if-eq p1, p2, :cond_8

    .line 2651
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2602(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    .line 2652
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    :cond_8
    :goto_0
    return-void
.end method
