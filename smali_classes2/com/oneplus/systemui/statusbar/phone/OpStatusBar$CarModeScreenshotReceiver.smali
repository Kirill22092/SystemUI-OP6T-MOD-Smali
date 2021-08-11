.class public Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarModeScreenshotReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "OpStatusBar"

    const-string p2, " cancel carMode"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->showDemooCarModeHighLight(ZZ)V

    return-void
.end method
