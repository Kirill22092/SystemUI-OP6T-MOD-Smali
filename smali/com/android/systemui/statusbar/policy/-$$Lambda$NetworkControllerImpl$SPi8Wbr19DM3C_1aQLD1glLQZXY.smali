.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$SPi8Wbr19DM3C_1aQLD1glLQZXY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$SPi8Wbr19DM3C_1aQLD1glLQZXY;->f$0:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$SPi8Wbr19DM3C_1aQLD1glLQZXY;->f$0:Landroid/app/AlertDialog;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->lambda$opActionTetherErrorAlertDialog$3(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
