.class public abstract Lhmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmd;


# static fields
.field static final c:Lhmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lhmu;

    invoke-direct {v0}, Lhmu;-><init>()V

    sput-object v0, Lhmt;->c:Lhmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
