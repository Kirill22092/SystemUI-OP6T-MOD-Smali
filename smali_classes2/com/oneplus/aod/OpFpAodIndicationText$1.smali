.class Lcom/oneplus/aod/OpFpAodIndicationText$1;
.super Ljava/lang/Object;
.source "OpFpAodIndicationText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpFpAodIndicationText;->setAodIndicationText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpFpAodIndicationText;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpFpAodIndicationText$1;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    iput-object p2, p0, Lcom/oneplus/aod/OpFpAodIndicationText$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText$1;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    iget-object v1, p0, Lcom/oneplus/aod/OpFpAodIndicationText$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpFpAodIndicationText$1;->this$0:Lcom/oneplus/aod/OpFpAodIndicationText;

    iget-object p0, p0, Lcom/oneplus/aod/OpFpAodIndicationText$1;->val$text:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
