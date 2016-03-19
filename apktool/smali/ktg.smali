.class final Lktg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lkxx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkxx",
            "<",
            "Lkte;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lkxx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkxx",
            "<",
            "Lkte;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lkxx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkxx",
            "<",
            "Lktm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 332
    const-class v0, Lkte;

    const-string v1, "map"

    .line 333
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Class;Ljava/lang/String;)Lkxx;

    move-result-object v0

    sput-object v0, Lktg;->a:Lkxx;

    .line 334
    const-class v0, Lkte;

    const-string v1, "size"

    .line 335
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Class;Ljava/lang/String;)Lkxx;

    move-result-object v0

    sput-object v0, Lktg;->b:Lkxx;

    .line 336
    const-class v0, Lktm;

    const-string v1, "emptySet"

    .line 337
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Class;Ljava/lang/String;)Lkxx;

    move-result-object v0

    sput-object v0, Lktg;->c:Lkxx;

    .line 336
    return-void
.end method
