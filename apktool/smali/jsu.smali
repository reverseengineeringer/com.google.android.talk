.class public final enum Ljsu;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljsu;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Ljsu;

.field private static final synthetic b:[Ljsu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljsu;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Ljsu;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljsu;->a:Ljsu;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Ljsu;

    const/4 v1, 0x0

    sget-object v2, Ljsu;->a:Ljsu;

    aput-object v2, v0, v1

    sput-object v0, Ljsu;->b:[Ljsu;

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
    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljsu;
    .locals 1

    .prologue
    .line 6
    const-class v0, Ljsu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljsu;

    return-object v0
.end method

.method public static values()[Ljsu;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Ljsu;->b:[Ljsu;

    invoke-virtual {v0}, [Ljsu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljsu;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Ljst;

    invoke-direct {v0}, Ljst;-><init>()V

    .line 6
    return-object v0
.end method
