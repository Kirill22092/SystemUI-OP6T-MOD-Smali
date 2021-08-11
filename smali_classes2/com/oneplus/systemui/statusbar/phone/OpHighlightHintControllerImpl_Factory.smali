.class public final Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;
.super Ljava/lang/Object;
.source "OpHighlightHintControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;

    invoke-direct {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;-><init>()V

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;->INSTANCE:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;
    .locals 1

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;->INSTANCE:Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;
    .locals 1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;

    invoke-direct {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;
    .locals 0

    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;->provideInstance()Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;->get()Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;

    move-result-object p0

    return-object p0
.end method
