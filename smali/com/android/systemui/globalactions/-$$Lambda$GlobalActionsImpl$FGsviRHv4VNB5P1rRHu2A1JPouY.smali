.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsImpl;

.field public final synthetic f$1:Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsImpl;Lcom/android/internal/colorextraction/drawable/ScrimDrawable;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;->f$0:Lcom/android/systemui/globalactions/GlobalActionsImpl;

    iput-object p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;->f$1:Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    iput-object p3, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;->f$0:Lcom/android/systemui/globalactions/GlobalActionsImpl;

    iget-object v1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;->f$1:Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    iget-object p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsImpl$FGsviRHv4VNB5P1rRHu2A1JPouY;->f$2:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsImpl;->lambda$showShutdownUi$0$GlobalActionsImpl(Lcom/android/internal/colorextraction/drawable/ScrimDrawable;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method
