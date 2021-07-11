.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1VuhVwKc6qYSjn3u6ATHSsYFxYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1VuhVwKc6qYSjn3u6ATHSsYFxYo;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1VuhVwKc6qYSjn3u6ATHSsYFxYo;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$createPowerOverflowPopup$4$GlobalActionsDialog$ActionsDialog(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method
