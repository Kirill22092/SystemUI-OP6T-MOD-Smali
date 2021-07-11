.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;
.super Landroid/database/ContentObserver;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/os/Handler;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    .line 388
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_fullscreen_gesture_type"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v3}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpStatusBar"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$402(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;I)I

    .line 395
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_gesture_button_side_enabled"

    const/4 v4, 0x1

    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v1

    .line 397
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-eq v0, p1, :cond_1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gesture side to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sput-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$600(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "nav_icon_hide"

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v1

    .line 406
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideImeBackAndSwitcher="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$700(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$702(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z

    .line 411
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 412
    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->getNavBarMode()I

    move-result p1

    .line 413
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I

    move-result v0

    if-eq v0, v4, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez v0, :cond_4

    .line 414
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v4

    .line 415
    :cond_4
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$800(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    xor-int/lit8 v0, v1, 0x1

    const-string v1, "buttons_show_on_screen_navkeys"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkNavigationBarState()V

    return-void
.end method
