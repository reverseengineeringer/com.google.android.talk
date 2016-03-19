.class public final Lebg;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:J


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 17
    iput-object p2, p0, Lebg;->a:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Lebg;->e:J

    .line 19
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 4

    .prologue
    .line 1134
    iget-object v0, p0, Ldyx;->c:Ldyy;

    .line 23
    iget-object v1, p0, Lebg;->a:Ljava/lang/String;

    iget-wide v2, p0, Lebg;->e:J

    invoke-static {v0, v1, v2, v3}, Lbft;->a(Ldyy;Ljava/lang/String;J)V

    .line 25
    return-void
.end method
