.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1RYmYsH7EaEqXQvxS03WLknm2g4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1RYmYsH7EaEqXQvxS03WLknm2g4;->f$0:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1RYmYsH7EaEqXQvxS03WLknm2g4;->f$0:Landroid/view/ViewGroup;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeWalletView$2(Landroid/view/ViewGroup;Landroid/view/View;IIIIIIII)V

    return-void
.end method
