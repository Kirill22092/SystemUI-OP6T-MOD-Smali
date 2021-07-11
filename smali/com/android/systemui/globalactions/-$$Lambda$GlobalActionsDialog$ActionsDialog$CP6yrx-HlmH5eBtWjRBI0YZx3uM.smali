.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$CP6yrx-HlmH5eBtWjRBI0YZx3uM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$CP6yrx-HlmH5eBtWjRBI0YZx3uM;->f$0:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$CP6yrx-HlmH5eBtWjRBI0YZx3uM;->f$0:Landroid/view/ViewGroup;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$show$6(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
