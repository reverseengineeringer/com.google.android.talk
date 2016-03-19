.class public final Ladt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final synthetic b:Lebz;


# direct methods
.method public constructor <init>(Lebz;)V
    .locals 0

    .prologue
    .line 2109
    iput-object p1, p0, Ladt;->b:Lebz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1119
    iget-wide v0, p0, Ladt;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 1114
    iput-wide p1, p0, Ladt;->a:J

    .line 1115
    return-void
.end method
