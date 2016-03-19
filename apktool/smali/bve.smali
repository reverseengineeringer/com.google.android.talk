.class public final Lbve;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lbvd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lbva;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbve;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lbve;->b:Lbvd;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lbvd;

    invoke-direct {v0}, Lbvd;-><init>()V

    sput-object v0, Lbve;->b:Lbvd;

    .line 18
    :cond_0
    const-class v0, Lbva;

    .line 1015
    new-instance v1, Lbva;

    invoke-direct {v1, p0}, Lbva;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
