.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$gIe4Ly5u4oeRcLYZFLgXwmhKZ40;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$gIe4Ly5u4oeRcLYZFLgXwmhKZ40;->f$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$gIe4Ly5u4oeRcLYZFLgXwmhKZ40;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$gIe4Ly5u4oeRcLYZFLgXwmhKZ40;->f$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$gIe4Ly5u4oeRcLYZFLgXwmhKZ40;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->lambda$refreshCACerts$0$SecurityControllerImpl(I)V

    return-void
.end method
