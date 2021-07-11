.class Lcom/oneplus/aod/OpAodDisplayViewManager$10$1;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$10;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$10;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$10;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void
.end method
