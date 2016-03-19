.class public final Lbez;
.super Lehx;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lehm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lehm;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lehx;-><init>()V

    .line 16
    iput-object p1, p0, Lbez;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lbez;->b:Lehm;

    .line 18
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbez;->a:Ljava/lang/String;

    return-object v0
.end method
