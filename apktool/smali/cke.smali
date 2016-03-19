.class public final Lcke;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lckb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcny;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcke;->a:Ljava/lang/String;

    .line 12
    const-class v0, Lcnz;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcke;->b:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcke;->c:Lckb;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lckb;

    invoke-direct {v0}, Lckb;-><init>()V

    sput-object v0, Lcke;->c:Lckb;

    .line 21
    :cond_0
    const-class v0, Lcny;

    sget-object v1, Lcke;->c:Lckb;

    .line 22
    invoke-virtual {v1}, Lckb;->a()[Lcny;

    move-result-object v1

    .line 21
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 23
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcke;->c:Lckb;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lckb;

    invoke-direct {v0}, Lckb;-><init>()V

    sput-object v0, Lcke;->c:Lckb;

    .line 29
    :cond_0
    const-class v0, Lcnz;

    sget-object v1, Lcke;->c:Lckb;

    .line 30
    invoke-virtual {v1}, Lckb;->b()[Lcnz;

    move-result-object v1

    .line 29
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 31
    return-void
.end method
