.class Lcom/oneplus/aod/OpAodDisplayViewManager$4$2;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$4;->onTimeZoneChanged(Ljava/util/TimeZone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

.field final synthetic val$timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;Ljava/util/TimeZone;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$2;->val$timeZone:Ljava/util/TimeZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$2;->val$timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpClockViewCtrl;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method
