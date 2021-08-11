.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$w0FuAr6MDKkUIV1rcwwlRClXFUs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$w0FuAr6MDKkUIV1rcwwlRClXFUs;->f$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$w0FuAr6MDKkUIV1rcwwlRClXFUs;->f$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    return-void
.end method
