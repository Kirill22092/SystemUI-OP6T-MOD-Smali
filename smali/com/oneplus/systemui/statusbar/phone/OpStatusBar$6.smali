.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;
.super Landroid/content/BroadcastReceiver;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->initDetectCTSReceiver()V
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

    .line 381
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "OpStatusBar"

    .line 388
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 393
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.android.compatibility.common.deviceinfo"

    .line 394
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$802(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z

    .line 397
    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->setCTSAdded(Z)V

    const-string p0, "isSpecial case start"

    .line 398
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "com.android.tradefed.utils.wifi"

    .line 401
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$802(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z

    .line 404
    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->setCTSAdded(Z)V

    const-string p0, "isSpecial case end"

    .line 405
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "sPkgReceiver error."

    .line 410
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
