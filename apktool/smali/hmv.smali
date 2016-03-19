.class public abstract Lhmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmd;


# static fields
.field static final a:Lhmv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lhmw;

    invoke-direct {v0}, Lhmw;-><init>()V

    sput-object v0, Lhmv;->a:Lhmv;

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
    const v0, 0x7fffffff

    return v0
.end method
