.class public final Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;
.super Ljava/lang/Object;
.source "NotifInflationErrorManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;
    .locals 1

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;
    .locals 0

    .line 16
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->provideInstance()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->get()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    move-result-object p0

    return-object p0
.end method
