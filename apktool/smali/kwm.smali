.class abstract enum Lkwm;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lknj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkwm;",
        ">;",
        "Lknj",
        "<",
        "Ljava/util/Map$Entry",
        "<**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkwm;

.field public static final enum b:Lkwm;

.field private static final synthetic c:[Lkwm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lkwn;

    const-string v1, "KEY"

    invoke-direct {v0, v1}, Lkwn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkwm;->a:Lkwm;

    .line 98
    new-instance v0, Lkwo;

    const-string v1, "VALUE"

    invoke-direct {v0, v1}, Lkwo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkwm;->b:Lkwm;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lkwm;

    const/4 v1, 0x0

    sget-object v2, Lkwm;->a:Lkwm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkwm;->b:Lkwm;

    aput-object v2, v0, v1

    sput-object v0, Lkwm;->c:[Lkwm;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkwm;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lkwm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkwm;

    return-object v0
.end method

.method public static values()[Lkwm;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lkwm;->c:[Lkwm;

    invoke-virtual {v0}, [Lkwm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkwm;

    return-object v0
.end method
