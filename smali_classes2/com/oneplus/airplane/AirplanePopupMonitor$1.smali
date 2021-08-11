.class Lcom/oneplus/airplane/AirplanePopupMonitor$1;
.super Ljava/lang/Object;
.source "AirplanePopupMonitor.java"

# interfaces
.implements Lcom/android/systemui/BootCompleteCache$BootCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/airplane/AirplanePopupMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/airplane/AirplanePopupMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/airplane/AirplanePopupMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/airplane/AirplanePopupMonitor$1;->this$0:Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .locals 3

    const-class v0, Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor$1;->this$0:Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-static {v0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->access$000(Lcom/oneplus/airplane/AirplanePopupMonitor;)V

    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor$1;->this$0:Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-static {v0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->access$100(Lcom/oneplus/airplane/AirplanePopupMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->access$200(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/airplane/AirplanePopupMonitor$1;->this$0:Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-static {v1}, Lcom/oneplus/airplane/AirplanePopupMonitor;->access$100(Lcom/oneplus/airplane/AirplanePopupMonitor;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/airplane/AirplanePopupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor$1;->this$0:Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-static {p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->access$100(Lcom/oneplus/airplane/AirplanePopupMonitor;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
