.class public Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HideTileBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-eqz p2, :cond_b

    .line 718
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oneplus.systemui.qs.hide_tile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo p1, "tile"

    .line 720
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hide"

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x64

    const-string v3, "position"

    .line 722
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 724
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 725
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 727
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v2, v2, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 728
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string/jumbo v4, "sysui_qs_tiles"

    .line 727
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 730
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v3}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 732
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const-string v4, "ringermode"

    .line 733
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v5, [I

    const/16 v6, 0x8a

    aput v6, v4, v1

    .line 734
    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 p2, p2, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v1

    .line 739
    :goto_0
    invoke-static {}, Lcom/android/systemui/qs/QSTileHost;->access$300()Z

    move-result v6

    const-string v7, "QSTileHost"

    if-eqz v6, :cond_3

    .line 740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HideTileReceiver: setting="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HideTileReceiver: tile="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", hide="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", pos="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", containsRinger="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HideTileReceiver: list="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v6, v6, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v6, v6, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HideTileReceiver: hide="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v6}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v4, "custom(com.amazon.dee.app/com.amazon.alexa.handsfree.settings.quicksettings.AlexaQuickSettingService)"

    .line 747
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "edited: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getIsEditTileBefore()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result v4

    if-nez v4, :cond_4

    const-string p0, "not support to add alexa tile"

    .line 751
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v2, :cond_6

    .line 753
    invoke-static {}, Lcom/oneplus/util/OpUtils;->getIsEditTileBefore()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, "not allow to add alexa tile"

    .line 756
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 754
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v2, v2, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/oneplus/util/OpUtils;->setIsEditTileBefore(Landroid/content/Context;Z)V

    :cond_7
    if-eqz v0, :cond_8

    .line 763
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 765
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0, p1, v5, p2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$800(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;ZI)V

    goto :goto_2

    .line 768
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 769
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 771
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0, p1, v1, p2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$800(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;ZI)V

    .line 773
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object p1, p1, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$HideTileBroadcastReceiver;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    .line 774
    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Ljava/util/List;

    move-result-object p0

    const-string p2, ","

    invoke-static {p2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    const-string v0, "op_sysui_qs_tiles_hide"

    .line 773
    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_b
    :goto_3
    return-void
.end method
