.class Lcom/oneplus/aod/views/parsons/OpParsonsClock$1;
.super Ljava/lang/Object;
.source "OpParsonsClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/views/parsons/OpParsonsClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/views/parsons/OpParsonsClock;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/views/parsons/OpParsonsClock;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock$1;->this$0:Lcom/oneplus/aod/views/parsons/OpParsonsClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 539
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpParsonsClock:UnlockMsg"

    const-string v1, "hide"

    .line 540
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock$1;->this$0:Lcom/oneplus/aod/views/parsons/OpParsonsClock;

    invoke-static {v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->access$000(Lcom/oneplus/aod/views/parsons/OpParsonsClock;)Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock$1;->this$0:Lcom/oneplus/aod/views/parsons/OpParsonsClock;

    invoke-static {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->access$100(Lcom/oneplus/aod/views/parsons/OpParsonsClock;)V

    return-void
.end method
