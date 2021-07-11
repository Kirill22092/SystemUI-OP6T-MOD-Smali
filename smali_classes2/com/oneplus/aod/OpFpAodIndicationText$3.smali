.class Lcom/oneplus/aod/OpFpAodIndicationText$3;
.super Ljava/lang/Object;
.source "OpFpAodIndicationText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpFpAodIndicationText;->showOrHide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

.field final synthetic val$needToShow:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpFpAodIndicationText;Z)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText$3;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    iput-boolean p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText$3;->val$needToShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText$3;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    iget-boolean p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText$3;->val$needToShow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
