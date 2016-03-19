.class public final enum Lkrr;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lavb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkrr;",
        ">;",
        "Lavb;"
    }
.end annotation


# static fields
.field public static final enum a:Lkrr;

.field private static final synthetic b:[Lkrr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lkrr;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lkrr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkrr;->a:Lkrr;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lkrr;

    const/4 v1, 0x0

    sget-object v2, Lkrr;->a:Lkrr;

    aput-object v2, v0, v1

    sput-object v0, Lkrr;->b:[Lkrr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkrr;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lkrr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkrr;

    return-object v0
.end method

.method public static values()[Lkrr;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lkrr;->b:[Lkrr;

    invoke-virtual {v0}, [Lkrr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkrr;

    return-object v0
.end method
