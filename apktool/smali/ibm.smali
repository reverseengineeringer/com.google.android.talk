.class public final enum Libm;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Libm;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Libm;

.field private static final synthetic b:[Libm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Libm;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Libm;-><init>(Ljava/lang/String;)V

    sput-object v0, Libm;->a:Libm;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Libm;

    const/4 v1, 0x0

    sget-object v2, Libm;->a:Libm;

    aput-object v2, v0, v1

    sput-object v0, Libm;->b:[Libm;

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
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Libm;
    .locals 1

    .prologue
    .line 7
    const-class v0, Libm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Libm;

    return-object v0
.end method

.method public static values()[Libm;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Libm;->b:[Libm;

    invoke-virtual {v0}, [Libm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Libm;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1041
    new-instance v0, Licb;

    invoke-direct {v0}, Licb;-><init>()V

    .line 7
    return-object v0
.end method
