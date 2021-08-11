.class Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;
.super Landroid/database/ContentObserver;
.source "OpOneHandModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_one_hand_mode_setting"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "one_hand_mode_status"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$102(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;Z)Z

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trigger change by self. one handed mode type from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpOneHandModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$202(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;I)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const-string p1, "op_one_hand_mode_setting"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " to "

    const-string v2, "OpOneHandModeController"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, -0x2

    invoke-static {v0, p1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trigger change by observer uri. one handed mode type from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v4}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$202(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;I)I

    move p1, v3

    :goto_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v4}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Z

    move-result v4

    invoke-interface {v0, v4}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;->onOneHandEnableStateChange(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "one_hand_mode_status"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {p2}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget-boolean p2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trigger chang by observer uri. one handed mode status from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {p2, p1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$102(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;Z)Z

    :goto_1
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {p2}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v3, p2, :cond_3

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {p2}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;->onOneHandPerformStateChange(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->notifyLeaveOneHandedMode()V

    :cond_4
    return-void
.end method
