.class Lcom/oneplus/worklife/OPWLBHelper$1$1;
.super Ljava/lang/Object;
.source "OPWLBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/worklife/OPWLBHelper$1;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/worklife/OPWLBHelper$1;

.field final synthetic val$wlbEnabled:I


# direct methods
.method constructor <init>(Lcom/oneplus/worklife/OPWLBHelper$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->this$1:Lcom/oneplus/worklife/OPWLBHelper$1;

    iput p2, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->val$wlbEnabled:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->val$wlbEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->this$1:Lcom/oneplus/worklife/OPWLBHelper$1;

    iget-object v0, v0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBHelper;->access$200(Lcom/oneplus/worklife/OPWLBHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->this$1:Lcom/oneplus/worklife/OPWLBHelper$1;

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$100(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;->onShowWLBStatusBarIcon()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->this$1:Lcom/oneplus/worklife/OPWLBHelper$1;

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$100(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;->onHideWLBStatusBarIcon()V

    :goto_0
    return-void
.end method
