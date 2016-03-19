.class final Ldhy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2393
    iput-object p1, p0, Ldhy;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ldhu;Ljava/lang/CharSequence;)Ldhw;
    .locals 1

    .prologue
    .line 2396
    new-instance v0, Ldhw;

    invoke-direct {v0, p0, p1, p2}, Ldhw;-><init>(Ldhy;Ldhu;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ldhu;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldhu;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1393
    invoke-direct {p0, p1, p2}, Ldhy;->b(Ldhu;Ljava/lang/CharSequence;)Ldhw;

    move-result-object v0

    return-object v0
.end method
