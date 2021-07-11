.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$SystemUIDialog$aJwQFxZ3HhCkUHQluqH61p2yCMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SystemUIDialog$aJwQFxZ3HhCkUHQluqH61p2yCMc;->f$0:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SystemUIDialog$aJwQFxZ3HhCkUHQluqH61p2yCMc;->f$0:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->lambda$registerDismissListener$0(Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;Landroid/content/DialogInterface;)V

    return-void
.end method
