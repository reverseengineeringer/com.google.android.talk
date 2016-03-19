.class public abstract enum Lkyh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkyh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkyh;

.field public static final enum b:Lkyh;

.field public static final enum c:Lkyh;

.field public static final enum d:Lkyh;

.field public static final enum e:Lkyh;

.field private static final synthetic f:[Lkyh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lkyi;

    const-string v1, "ANY_PRESENT"

    invoke-direct {v0, v1}, Lkyi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyh;->a:Lkyh;

    .line 63
    new-instance v0, Lkyj;

    const-string v1, "LAST_PRESENT"

    invoke-direct {v0, v1}, Lkyj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyh;->b:Lkyh;

    .line 87
    new-instance v0, Lkyk;

    const-string v1, "FIRST_PRESENT"

    invoke-direct {v0, v1}, Lkyk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyh;->c:Lkyh;

    .line 113
    new-instance v0, Lkyl;

    const-string v1, "FIRST_AFTER"

    invoke-direct {v0, v1}, Lkyl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyh;->d:Lkyh;

    .line 124
    new-instance v0, Lkym;

    const-string v1, "LAST_BEFORE"

    invoke-direct {v0, v1}, Lkym;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyh;->e:Lkyh;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lkyh;

    const/4 v1, 0x0

    sget-object v2, Lkyh;->a:Lkyh;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkyh;->b:Lkyh;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkyh;->c:Lkyh;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkyh;->d:Lkyh;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkyh;->e:Lkyh;

    aput-object v2, v0, v1

    sput-object v0, Lkyh;->f:[Lkyh;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkyh;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lkyh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkyh;

    return-object v0
.end method

.method public static values()[Lkyh;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lkyh;->f:[Lkyh;

    invoke-virtual {v0}, [Lkyh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkyh;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation
.end method
