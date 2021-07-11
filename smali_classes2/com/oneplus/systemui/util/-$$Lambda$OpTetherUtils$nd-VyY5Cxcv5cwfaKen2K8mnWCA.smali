.class public final synthetic Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/systemui/util/OpTetherUtils$OnDialogConfirmCallback;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/util/OpTetherUtils$OnDialogConfirmCallback;ZLandroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$0:Lcom/oneplus/systemui/util/OpTetherUtils$OnDialogConfirmCallback;

    iput-boolean p2, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$1:Z

    iput-object p3, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$0:Lcom/oneplus/systemui/util/OpTetherUtils$OnDialogConfirmCallback;

    iget-boolean v1, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$1:Z

    iget-object v2, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpTetherUtils$nd-VyY5Cxcv5cwfaKen2K8mnWCA;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/systemui/util/OpTetherUtils;->lambda$showUstAlertDialog$0(Lcom/oneplus/systemui/util/OpTetherUtils$OnDialogConfirmCallback;ZLandroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V

    return-void
.end method
