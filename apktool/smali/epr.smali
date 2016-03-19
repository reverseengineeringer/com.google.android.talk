.class public final enum Lepr;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lepr;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Lepr;

.field private static final synthetic b:[Lepr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lepr;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lepr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lepr;->a:Lepr;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lepr;

    const/4 v1, 0x0

    sget-object v2, Lepr;->a:Lepr;

    aput-object v2, v0, v1

    sput-object v0, Lepr;->b:[Lepr;

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
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lepr;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lepr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lepr;

    return-object v0
.end method

.method public static values()[Lepr;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lepr;->b:[Lepr;

    invoke-virtual {v0}, [Lepr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lepr;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1025
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1026
    const-class v1, Lhqo;

    .line 2015
    new-instance v2, Ljqx;

    invoke-direct {v2, v1}, Ljqx;-><init>(Ljava/lang/Class;)V

    .line 1026
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    return-object v0
.end method
