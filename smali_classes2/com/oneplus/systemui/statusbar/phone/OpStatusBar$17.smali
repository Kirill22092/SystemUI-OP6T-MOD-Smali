.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$17;
.super Ljava/lang/Object;
.source "OpStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->unregisterDozeCustomSensorEarily()V
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

    .line 1776
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$17;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$17;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$2500(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1780
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$17;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$2500(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;->fireStartedWakingUp()V

    :cond_0
    return-void
.end method
