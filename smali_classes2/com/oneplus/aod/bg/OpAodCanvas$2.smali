.class Lcom/oneplus/aod/bg/OpAodCanvas$2;
.super Ljava/lang/Object;
.source "OpAodCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/bg/OpAodCanvas;->onUserUnlocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/bg/OpAodCanvas;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$2;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$2;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$700(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->register()V

    return-void
.end method
