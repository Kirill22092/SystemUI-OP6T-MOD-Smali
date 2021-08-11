.class Lcom/oneplus/aod/slice/OpSliceManager$1;
.super Ljava/lang/Object;
.source "OpSliceManager.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardAssistantView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpSliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/slice/OpSliceManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardShownChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive onCardShownChanged value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSliceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->access$000(Lcom/oneplus/aod/slice/OpSliceManager;Z)V

    return-void
.end method
