.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$1SZvPIdbqVv78ZfFe1GTnc0G8WM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$1SZvPIdbqVv78ZfFe1GTnc0G8WM;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$1SZvPIdbqVv78ZfFe1GTnc0G8WM;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p0

    return p0
.end method
