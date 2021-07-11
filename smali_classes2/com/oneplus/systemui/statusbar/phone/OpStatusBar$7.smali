.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;
.super Landroid/content/BroadcastReceiver;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->initClearDataReceiver()V
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

    .line 723
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "OpStatusBar"

    const-string p2, "get clear data"

    .line 726
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$2100(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    return-void
.end method
