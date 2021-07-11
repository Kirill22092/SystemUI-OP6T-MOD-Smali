.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;
.super Landroid/content/BroadcastReceiver;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->initDetectPkgReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "com.amazon.alexa.handsfree.settings.quicksettings.AlexaQuickSettingService"

    const-string v1, "OpStatusBar"

    .line 627
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 629
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    const-string v4, "com.amazon.dee.app"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .line 631
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    .line 632
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "com.android.compatibility.common.deviceinfo"

    .line 633
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 635
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1, v5}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1602(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z

    .line 636
    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->setCTSAdded(Z)V

    const-string p1, "isSpecial case start"

    .line 637
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    .line 639
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.android.tradefed.utils.wifi"

    .line 640
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 642
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1, v6}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1602(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z

    .line 643
    invoke-static {v6}, Lcom/oneplus/util/OpUtils;->setCTSAdded(Z)V

    const-string p1, "isSpecial case end"

    .line 644
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 646
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.intent.extra.REPLACING"

    .line 648
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 650
    sget-boolean v7, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, -0x2

    const-string v9, "op_app_double_tap_power_gesture"

    if-eqz v7, :cond_2

    .line 651
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ALEXA_PKG removed, dbValue:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v10}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1700(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v9, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ALEXA_PKG removed, OpUtils.DoubleTap:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mDTPApp:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    .line 656
    invoke-static {v10}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1000(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", isReplacing:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 655
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    .line 658
    invoke-static {v7}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1000(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I

    move-result v7

    if-ne v7, v3, :cond_3

    if-nez p1, :cond_3

    .line 663
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1800(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v9, v6, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 666
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerObserver:Landroid/database/ContentObserver;

    if-eqz p1, :cond_3

    .line 667
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 675
    :cond_3
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 676
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 679
    array-length p2, p1

    move v2, v6

    :goto_1
    if-ge v2, p2, :cond_5

    aget-object v7, p1, v2

    .line 680
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 681
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1900(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p1

    .line 683
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alexa cmp changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v5, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_2
    if-eqz v5, :cond_7

    .line 692
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oneplus.systemui.qs.hide_tile"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "tile"

    const-string v0, "custom(com.amazon.dee.app/com.amazon.alexa.handsfree.settings.quicksettings.AlexaQuickSettingService)"

    .line 693
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "hide"

    .line 694
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0xc

    .line 696
    invoke-static {}, Lcom/oneplus/util/OpUtils;->getSimCount()I

    move-result v0

    if-lt v0, v3, :cond_6

    const/16 p2, 0xb

    :cond_6
    const-string v0, "position"

    .line 700
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add alexa tile, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$2000(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "sPkgReceiver error."

    .line 707
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-void
.end method
