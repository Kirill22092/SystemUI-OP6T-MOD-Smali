.class Lcom/oneplus/aod/OpAodLightEffectContainer$2;
.super Ljava/lang/Object;
.source "OpAodLightEffectContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    .line 65
    return-void
.end method
